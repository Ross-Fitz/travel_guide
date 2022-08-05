document.addEventListener("DOMContentLoaded"), () => {
    const SAVING_MESSAGE = "Saving...";
    const SAVED_MESSAGE = "All changes saved.";

    document.querySelectorAll(".autosave-message").forEach(el => el.textContent = SAVED_MESSAGE);

    document.querySelectorAll("[data-autosave-url]").forEach(inputField => {
        inputField.addEventListener("change", async () => {
            const name = inputField.getAttribute("name");
            const value = inputField.value;
            const url = inputField.dataset.autosaveUrl;
            const autosaveMessageEl = inputField.closest(".container").querySelector(".autosave-message");
            const formData = new formData();

            formData.append(name, value);
            autosaveMessageEl.classList.add("autosave-message-saving");
            autosaveMessageEl.textContent = SAVING_MESSAGE;

            const response = await fetch(url, {
                method: "PUT",
                body: formData
            });

            autosaveMessageEl.classList.remove("autosave-message-saving");
            autosaveMessageEl.textContent = SAVED_MESSAGE;

        });
    });
};