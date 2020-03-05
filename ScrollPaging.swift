//import SwiftUI

struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    @Binding var currentPage: Int

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator

        return pageViewController
    }

    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [controllers[currentPage]], direction: .forward, animated: true)
    }

    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        var parent: PageViewController

        init(_ pageViewController: PageViewController) {
            self.parent = pageViewController
        }

        func pageViewController(
            _ pageViewController: UIPageViewController,
            viewControllerBefore viewController: UIViewController) -> UIViewController?
        {
            guard let index = parent.controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index == 0 {
                return nil
            }
            return parent.controllers[index - 1]
        }

        func pageViewController(
            _ pageViewController: UIPageViewController,
            viewControllerAfter viewController: UIViewController) -> UIViewController?
        {
            guard let index = parent.controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index + 1 == parent.controllers.count {
                return nil
            }
            return parent.controllers[index + 1]
        }

        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            if completed,
                let visibleViewController = pageViewController.viewControllers?.first,
                let index = parent.controllers.firstIndex(of: visibleViewController)
            {
                parent.currentPage = index
            }
        }
    }
}

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @Binding var currentPage: Int

    init(_ views: [Page], currentPage: Binding<Int>) {
        self._currentPage = currentPage
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        PageViewController(controllers: viewControllers, currentPage: $currentPage)
    }
}



struct PageDemoView: View {
    @State private var page = 0

    var body: some View {
        VStack {
            Picker("Page", selection: $page) {
                Text("Page 1").tag(0)
                Text("Page 2").tag(1)
                 Text("Page 3").tag(2)
                 Text("Page 4").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
            PageView([
                ContentView(),
                ContentView(),
                ContentView(),
                ContentView()
            ], currentPage: $page)
        }
    }
}

struct  PageDemoView_Previews: PreviewProvider {
    static var previews: some View {
         AuthView()
    }
}

import SwiftUI

struct AuthView: View {

    @State private var authPath = 0

    /* ... */

    var body: some View {
        VStack {
            Picker(selection: $authPath, label: Text("Authentication Path")) {
                Text("Log In").tag(0)
                Text("Sign Up").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Spacer()

            if authPath == 0 {
                Text("a")
                    .animation(.default)
                    .transition(.move(edge: .leading))
                    .padding()
            }
            if authPath == 1 {
                Text("a")
                    .animation(.default)
                    .transition(.move(edge: .trailing))
                    .padding()
            }

            Spacer()
        }
        .background(Color("Color.Background").edgesIgnoringSafeArea(.all))
    }
}
