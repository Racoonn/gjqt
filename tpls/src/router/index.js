import Vue from 'vue'
import Router from 'vue-router'
import Hello from '@/components/Hello'
Vue.use(Router)
    //李晓娟
import Index from '@/components/index/index'
import Forum from '@/components/forum/forum'
import ForumHome from '@/components/forum/forum-home'
import ForumHonor from '@/components/forum/forum-honor'
import ForumRanklist from '@/components/forum/forum-ranklist'
import ForumSign from '@/components/forum/forum-sign'
import HonorHome from '@/components/forum/honor-home'
//肖国普
import Heros from '@/components/heros'
import HDetails from '@/components/h-details'
import MHeros from '@/components/male-heros'
//孙强
import Inhert from '@/components/inherit/inherit'
import Inhert2 from '@/components/inhert2/inhert2'
import Drama from '@/components/drama/drama'
//吴正昌
import Sjg from '@/components/sjg'
import Shouye from '@/components/shouye'
import Taigu from '@/components/taigu'
import Renjian from '@/components/renjian'
import Qinling from '@/components/qinling'
//熊小龙
import Project from '@/components/project/project'

export default new Router({
    routes: [
        // {
        //   path: '/',
        //   name: 'Hello',
        //   component: Hello
        // },
        //李晓娟
        { path: '/', component: Index },
        { path: '/index', component: Index },
        {
            path: '/forum',
            component: Forum,
            children: [
                { path: '/', component: ForumHome },
                { path: '/home', component: ForumHome },
                { path: '/sign', component: ForumSign },
                { path: '/ranklist', component: ForumRanklist },
                {
                    path: '/honor',
                    component: ForumHonor,
                    children: [
                        { path: '/', component: HonorHome },
                        { path: '/honorHome', component: HonorHome }
                    ]
                }
            ]
        },
        //肖国普
        {
            path: '/heros',
            component: Heros
        },
        {
            path: '/hdetails/:page',
            component: HDetails,
            children: [{
                    path: '/',
                    component: MHeros
                },
                {
                    path: '/mheros',
                    component: MHeros
                }
            ]
        },
        //孙强
        { path: '/inhert', component: Inhert },
        { path: '/inhert2', component: Inhert2 },
        { path: '/drama', component: Drama },
        //吴正昌
        {
            path: '/Sjg',
            component: Sjg,
            children: [{
                    path: '/',
                    component: Shouye
                },
                {
                    path: '/shouye',
                    component: Shouye
                },
                {
                    path: '/taigu',
                    component: Taigu
                },
                {
                    path: '/renjian',
                    component: Renjian
                },
                {
                    path: '/qinling',
                    component: Qinling
                }
            ]
        },
        //熊小龙
        {
            path: '/project',
            component: Project
        }
    ]
})