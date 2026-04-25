# 🏔️ Yeti Sustainability Project: Official Overview

**Play the Demo here:** [cecislet.github.io/MountainWasteManagement/](https://cecislet.github.io/MountainWasteManagement/)

Welcome to the first demo of our interactive educational game! This project merges fast-paced action with essential lessons on **Food Waste Management**. By linking gameplay performance directly to sustainability knowledge, we make learning a vital part of the player's survival and progress.

---

### 🎮 The Gameplay Loop: Hunger & Mood

The core of the game revolves around managing the Yeti's physical and emotional well-being:

* **The Hook (The Ski Lift):** A high-energy minigame where you dodge obstacles and collect coins. **Warning:** Crashing doesn't just increase hunger—it also upsets the Yeti!
* **The Mood System:** The Yeti’s emotional state (ranging from **Furious → Angry → Sad → Neutral → Happy**) dictates how fast he gets hungry.
    * **Boost Mood:** Answer quiz questions correctly or feed him fresh, high-quality food.
    * **Drain Mood:** Crashing in the minigame, answering quizzes incorrectly, or feeding him rotten/expired food will lower his spirits.
* **The Consequence:** The lower the Yeti's mood, the **faster his hunger bar grows**, creating a challenging cycle for players who neglect sustainability.
* **The Penalty (Furious Yeti):** If the Yeti becomes **Furious** or the hunger bar maxes out, he will refuse to play. You are **locked out** of the Ski Lift minigame until you improve his condition.

---

### 🗺️ Interactive NPCs & Education

The mountain is home to mentors who guide your sustainability journey:

* **The School (Professor Owl):** Click on **Professor Owl** for "Fun Facts" about food waste and the global impact of our consumption habits.
* **The Market (Cashier Cow):** Click on the **Cashier Cow** for expert advice on reading labels and essential tips for storing items correctly at home to maximize their shelf life.

---

### 🛒 The Market & Storage Mechanics

The Market is where players apply their knowledge to manage resources effectively:

* **Smart Shopping:** Buy food from the **Fridge** or **Normal Shelves**. Prices and nutritional values vary, and you can find **seasonal discounts** or **boosted values** depending on the time of year.
* **The Dual-Expiry System:**
    1.  **Best Before:** After this date, food is less effective at satisfying hunger and provides a smaller mood boost.
    2.  **Expiration Date:** Once expired, food becomes "waste." Eating it **increases hunger** and significantly **lowers the Yeti's mood**, potentially making him Furious instantly. Be careful not to over-buy, or your supplies might spoil before you can use them!

---

### 🎿 Ski Lift Minigame — Deep Dive

The Ski Lift is an **endless runner** where the Yeti skis down the mountain. The goal is to travel as far as possible while collecting as many coins and Knowledge Points as you can — and making it to the Finish Line alive!

#### 🏔️ Elements on the Slope

| Element | Description |
|---|---|
| 🌲 **Trees** | Obstacles — dodge them or it's Game Over! |
| 🪨 **Rocks** | Obstacles — same as trees, watch out! |
| 🏁 **Finish Line** | Reach it to win the run and give the Yeti a mood boost (+20) |
| 🪙 **Coins** | Collectibles that add to your coin total |
| 📚 **Knowledge Points** | Special collectibles that count as Knowledge for the Market |
| ⚡ **Power-ups** | Game-changers — see below! |

#### ⚡ Power-ups

Two power-ups can appear on the slope. They can be active at the same time!

**🪙 2× Coins** *(lasts 10 seconds)*
Doubles the value of every collectible you pick up:
- Each **Coin** counts as **2 Coins**
- Each **Knowledge Point** counts as **2 Knowledge Points**

**📚 Knowledge Mode** *(lasts 15 seconds)*
Replaces all incoming coins with Knowledge Points:
- For the full duration, **only Knowledge Points** spawn on the slope (no regular coins)
- Stacks with **2× Coins** — if both are active, each Knowledge Point counts as **2**

#### 📈 Difficulty & Progression

The run is split into escalating levels. As you go further, obstacles spawn faster and move at higher speed. Your score increases continuously based on distance traveled and current level, shown live on the HUD.

#### 🏆 End of Run

The run ends in one of two ways:
- **Crash** (Tree or Rock) → Game Over: the Yeti loses mood (−10) and gets hungrier (+10 hunger)
- **Finish Line** → Victory: the Yeti gains mood (+20)

All coins and Knowledge Points collected are added to your totals and saved after each run.

---

### 🚀 What’s in this Demo?

* **Main Hub:** The central snowy environment for world navigation.
* **Ski Lift Minigame:** A stress test for movement and responsive controls.
* **The School:** An interactive quiz module focused on environmental education.
* **The Market:** A shopping simulation where you can spend your **Knowledge Points** to feed your Yeti and manage your inventory.
* **The Shop (Coming Soon):** A space to spend your collected coins on Yeti skins and cosmetic customizations once the Yeti is fed and happy!