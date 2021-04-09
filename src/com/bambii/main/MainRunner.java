package com.bambii.main;

import java.util.List;
import java.util.Scanner;

import com.bambii.entities.Feeding;
import com.bambii.entities.Parent;
import com.bambii.entities.Sleep;
import com.bambii.services.FeedingService;
import com.bambii.services.ParentService;

public class MainRunner {
	static Scanner scn = new Scanner(System.in);
	static ParentService parentService = new ParentService();
	static FeedingService feedingService = new FeedingService();
	
	public static void main(String[] args) throws Exception {
		System.out.println("Welcome to MAIN RUNNER");
//		getAllParents();
//		getParentByUsername();
//		addParent();
//		getAllFeedings();
		addFeeding();
//		removeFeeding();
//		updateFeeding();
//		updateSleep();
	}

//	private static void updateSleep() {
//		System.out.println("Enter Sleep Id: ");
//		int idToUpdate = scn.nextInt();
//		Sleep sleep = new Sleep();
//		sleep.setsId(idToUpdate);
//		scn.nextLine();
//		System.out.println("\nEnter New Sleep Start Time: ");
//		sleep.setSleepStart(scn.nextLine());
//		System.out.println("\nEnter New Sleep End Time: ");
//		sleep.setSleepEnd(scn.nextLine());
//		System.out.println("\nEnter New Sleep Date: ");
//		sleep.setSleepDate(scn.next());
//		if(sleep.updateSleep(idToUpdate, sleep)) {
//			System.out.println("Sleep Sucessfully Updated");
//		} else {
//			System.out.println("Error updating Sleep");
//		}
//	}

	private static void updateFeeding() {
		System.out.println("Enter Feeding Id you would like to Update: ");
		int entryId = scn.nextInt();
		Feeding feeding = new Feeding();
		feeding.setId(entryId);
		scn.nextLine();
		System.out.print("\nEnter Type to update FeedType:\n");
		feeding.setFeedType(scn.nextLine());
		System.out.print("\nEnter Updated Feed Time:\n");
		feeding.setFeedTime(scn.nextLine());
		System.out.print("\nEnter Updated Feed Amount:\n");
		feeding.setFeedAmount(scn.nextLine());
		System.out.print("\nEnter Updated Feed Date:\n");
		feeding.setFeedDate(scn.nextLine());
		if(feedingService.updateFeeding(entryId, null, null, null, null)) {
			System.out.println("Employee Updated Successfully");
		}else {
			System.out.println("try again");
		}	
		
	}

	private static void addParent() {
		Parent parent = new Parent();
//		System.out.println("Enter ID: ");
//		parent.setId(scn.nextInt());
//		scn.nextLine();
		System.out.println("Enter Username: ");
		parent.setUsername(scn.nextLine());
		System.out.println("Enter Password: ");
		parent.setPass(scn.nextLine());
		System.out.println("Enter Child's Name: ");
		parent.setChild(scn.next());
		if (parentService.insertParent(parent)) {
			System.out.println("Parent successfully Registered");
		} else {
			System.out.println("Error resgistering Parent");
		}
	}

	private static void getParentByUsername() {
		System.out.println("Enter Username: ");	
		String parentUname = scn.nextLine();
		Parent parent = parentService.getParentByUsername(parentUname);
		System.out.printf("%-10s %-10s \n", "UserName", "Child Name");
		System.out.printf("%-10s %-10s \n", parent.getUsername(), parent.getChild());
	}

	private static void removeFeeding() {
		System.out.println("Enter Feeding Id you wish to remove: ");
		int idDelete = scn.nextInt();
		if(feedingService.removeFeeding(idDelete)) {
			System.out.println("Feeding Entry Successfully deleted");
		} else {
			System.out.println("Error removing Feeding Entry");
		}
	}

	private static void addFeeding() throws Exception {
		System.out.println("Enter Feeding Id: ");
		int entryId = scn.nextInt();
		scn.nextLine();
		System.out.println("Enter Feed Type (Bottle, Solids, Left Breast, Right Breast): ");
		String feedType = scn.nextLine();
		System.out.println("Enter time for Feed Time: ");
		String feedTime = scn.nextLine();
		System.out.println("Enter Amount: ");
		String feedAmt = scn.nextLine();
		System.out.println("Enter Date: ");
		String feedDate = scn.nextLine();
		feedingService.addFeeding(entryId, feedType, feedTime, feedAmt, feedDate);
		System.out.println("\n");		
	}

	private static void getAllFeedings() {
		List<Feeding> allFeedings = feedingService.getAllFeeding();
		System.out.println("All Feeding Entries \n");
		if(!allFeedings.isEmpty()) {
			System.out.printf("%-10s %-10s %-10s %-20s %-20s %n", "ID", "FEED TYPE", 
					"FEED TIME", "FEED AMOUNT", "FEED DATE");
			for(Feeding feeding : allFeedings) {
				System.out.format("%-10s %-10s %-10s %-20s %-20s %n", feeding.getId(),
						feeding.getFeedType(), feeding.getFeedTime(), feeding.getFeedTime(), feeding.getFeedDate());
			}
		}else System.out.println("No Feedings to show");
		System.out.println("\n");

	}

	private static void getAllParents() {
		List<Parent> parentsList = parentService.getAllParents();
		System.out.println("All Parents \n");
		if(!parentsList.isEmpty()) {
			System.out.printf("%-30s %-20s %-20s %n", "ID", "USERNAME", "CHILD");
			for(Parent parent : parentsList) {
				System.out.format("%-30s %-20s %-20s %n", parent.getId(), parent.getUsername(), parent.getChild());
			}
		}else System.out.println("No Parents to show");
		System.out.println("\n");

	}

}
