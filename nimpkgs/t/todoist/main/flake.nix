{
  description = ''A Nim client for Todoist's REST API'';
  inputs.src-todoist-main.flake = false;
  inputs.src-todoist-main.type = "github";
  inputs.src-todoist-main.owner = "ruivieira";
  inputs.src-todoist-main.repo = "nim-todoist";
  inputs.src-todoist-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-todoist-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-todoist-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-todoist-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}