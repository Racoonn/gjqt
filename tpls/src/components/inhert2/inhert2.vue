<template>
  <div>
    <header-short></header-short>
    <inhert2part1 @sendToInhert2='viewChange' v-if="num==0" style="position:absolute;left:0px;top:80px"></inhert2part1>
    <inhert2part2 @sendToInhert2='viewChange' v-if="num==1" style="position:absolute;left:0px;top:80px"></inhert2part2>
    <inhert2part3 @sendToInhert2='viewChange' v-if="num==2" style="position:absolute;left:0px;top:80px"></inhert2part3>
  </div>
</template>
<script>
import Inhert2part1 from '@/components/inhert2/inhert2part1'
import Inhert2part2 from '@/components/inhert2/inhert2part2'
import Inhert2part3 from '@/components/inhert2/inhert2part3'
import HeaderShort from '@/components/header'
export default{
  data:function(){
    return {
      num:0,
    }
  },
  components:{
    inhert2part1:Inhert2part1,
    inhert2part2:Inhert2part2,
    inhert2part3:Inhert2part3,
    HeaderShort:HeaderShort
  },
  mounted:function(){
   
  },
  methods:{
    viewChange:function(msg){
      this.num=msg;
    }
  }
}
</script>
<style>

</style>
