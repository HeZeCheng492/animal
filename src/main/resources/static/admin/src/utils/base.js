const base = {
    get() {
                return {
            url : "http://localhost:8080/animal/",
            name: "animal",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/animal/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "流浪动物救助平台"
        } 
    }
}
export default base
