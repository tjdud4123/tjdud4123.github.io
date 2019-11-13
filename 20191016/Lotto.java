package bean.user;

public class Lotto1 {
	private String N;
	public void setNum(String N) {
		this.N = N;
	}
	public String getNum() {
		int[] arr = new int[6];
		for(int i=0;i<arr.length;i++) {
			arr[i]=(int)(Math.random()*45)+1;
			for(int j=0;j<i;j++) {
				if(arr[i]==arr[j]) {
					i--;
					break;
				}
			}
		}
		for(int i=0;i<arr.length;i++){
			N+=arr[i]+" ";
		}
		return N;
	}
}
