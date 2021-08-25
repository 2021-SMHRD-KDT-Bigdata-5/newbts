package korean_edu;

import java.awt.List;
import java.util.ArrayList;
import java.util.Random;

public class random1 {

	public static void main(String[] args) {
		
		
		String[] photo = {"사과", "포도", "바나나", "파인애플", "망고"};
		ArrayList<String> list2 = new ArrayList<>(5);		
		int a[] = new int[4];
		
		ArrayList<String> list = new ArrayList<>();
		Random r = new Random();

		for (int i = 0; i <= 3; i++) {
			a[i] = r.nextInt(photo.length);
			int check = 0;
			
			for (int j = 0; j < i; j++) {
				if (a[i] == a[j]) {
					i--;
					check = 1;
				}
			}
			if(check==0) {
				list2.add(photo[a[i]]);
			}
		}

		System.out.println(list2);
		}


}
