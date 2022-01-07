{
  description = ''
    Sample Todo List Application
  '';
  inputs.src-sampleTodoList.url = "https://github.com/momeemt/SampleTodoList";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
