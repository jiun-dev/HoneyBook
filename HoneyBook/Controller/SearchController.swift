import UIKit

class SearchController: UIViewController, SearchSegmentControllerDelegate {
    func segmentValueChanged(to index: Int) {
        print("\(index)")
    }
    
    
    override func loadView() {
        super.loadView()
        print("loadview call")
        
        let myCustomSegmentControll = SearchSegmentController(frame: CGRect(x: 0, y: 0, width: 200, height: 200), buttonTitles: ["전체","제목","저자"])
        myCustomSegmentControll.searchBarDelegate = self
        
        self.view.addSubview(myCustomSegmentControll)
        
        myCustomSegmentControll.translatesAutoresizingMaskIntoConstraints = false
        myCustomSegmentControll.widthAnchor.constraint(equalToConstant: 300).isActive = true
        myCustomSegmentControll.heightAnchor.constraint(equalToConstant: 60).isActive = true
        myCustomSegmentControll.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        myCustomSegmentControll.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
                
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "도서검색"
        
        view.backgroundColor = .white
    }
}

