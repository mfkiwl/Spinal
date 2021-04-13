package spinal.tester.scalatest

import spinal.core._

class Top(width: BitCount) extends Component {
  val io = new Bundle{
    val a,b    = in UInt(width)
    val result = out UInt(width)
  }
  io.result := io.a + io.b
}

object Main{
  def main(args: Array[String]) {
    SpinalVerilog(new Top(32 bits))
  }
}


