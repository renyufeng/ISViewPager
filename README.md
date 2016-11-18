# ISViewPager

##ViewPager UI For iOS written in Swift.

![image](https://github.com/invictus-lee/ISViewPager/blob/master/viewpager.gif)

##Support
* Xcode8.0
* Swfit3.0 (Objective-C Not Supported)
* iOS7.0
* Device Support: Universal
* Device Orientaion Support:All

##UseAge
<pre code>
 class ViewPager:UIViewController{
    init(title:String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel.init(frame: CGRect(x: self.view.frame.width/2-50, y: self.view.frame.height/2-100, width: 100, height: 50))
        label.text = title
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
    }
}
/*********************************************************/
  let titles = ["标题一","标题二","标题三","标题四","标题五","标题六","标题七","标题八","标题九","标题十"]
        var viewPages = [ViewPager]()
        for title in titles{
            let viewpage = ViewPager(title:title)
            viewPages.append(viewpage)
        }
        let pagesOptions:[UIViewPagerOption] = [
            .TitleBarHeight(50),
            .TitleBarBackgroudColor(UIColor.white),
            .TitleBarScrollType(UIViewPagerTitleBarScrollType.UIViewControllerMenuScroll),
            .TitleFont(UIFont.systemFont(ofSize: 15, weight: 2)),
            .TitleColor(UIColor.black),
            .TitleSelectedColor(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            .TitleItemWidth(90),
            .IndicatorColor(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            .IndicatorHeight(5),
            .BottomlineColor(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            .BottomlineHeight(1)
        ]
        let pages = ISViewPagerContainer(titles: titles, viewPages:viewPages,options: pagesOptions)
        pages.view.backgroundColor = UIColor.white
        let baseVc = UINavigationController(rootViewController: pages)
</pre code>

## Handle Event
<pre code>
    public func didScrollToPage(index:UInt){
    }
    public func didScorllToLeftEdage(){
    }
    public func didScorllToRightEdage(){
    }
   </pre code>
   
