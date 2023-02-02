# BasicSyntax_SwiftUI_ListView
How to use ListView in SwiftUI (with Cell &amp; Passing Data, by Sean Allen)


# 1. 프로젝트 설명

> ## 1.1. 프로젝트 설명
> SwiftUI_ListView with Cell & Passing Data
> ## 1.2. 프로젝트 소개
> 이 프로젝트는 SwiftUI 에서 ListView 를 어떤 식으로 구현하는지에 대해 알아보았습니다. 
> 특히, 이번 프로젝트에서는 Video.swift 내의 배열로 구성된 데이터를 어떤식으로 View 와 연결하는 방법과
> NavigationView 를 통해 다른 View 와 연결하는 방법에 대해 알아보았습니다. 
> ## 1.3. 프로젝트 이미지
![Feb-02-2023 13-20-31](https://user-images.githubusercontent.com/81816844/216231124-cfe5cb7a-73c4-4972-907f-b4382dad344b.gif)


# 2. 프로젝트를 통해 알게 된 점

> ## 2.1. 코드를 줄이기 
> 코드는 가독성을 높이기 위해 UI 부분이나, 여기서는 동영상의 미리보기 이미지, 제목, 업로드 시간 등 반복해서 사용하는 부분이 있는데, 이걸 나눠서 작성한 것 
> ## 2.2. identifable
> 배열 내 데이터에 고유 ID 를 부여해서 구분하게 하는 것으로 여기서는 Video 내 배열의 값을 ListView 로 불러올 때 각 데이터를 구분하게 함 
> ## 2.3. Link 로 버튼 같이 만들기 
> 여기서는 Watch Now 부분을 버튼으로 꾸민게 아니라, Label 를 통해 destination 에는 video.url 로 연결할 데이터를 Video.swift 에서 받아오고,
> label 로는 UI 부분을 구현함 

# 3. 추가로 해볼 만한것 

> ## 3.1. 데이터 삽입, 제거, 수정 
> 말 그대로 데이터를 추가하는 것인데, 예를 들어 여기서 Video.swift 에서 제시한 데이터 외에 사용자가 추가로 데이터를 삽입, 제거, 수정 할 수 있도록 하는 것
> ## 3.2. 그리드 방식으로 구현해볼 것
> 인스타그램에서 처럼 이미지를 대표로 지정해서 나오게끔 해볼 것
