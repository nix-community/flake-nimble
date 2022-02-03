{
  description = ''A Nim client for Todoist's REST API'';
  inputs.src-todoist-v0_1_1.flake = false;
  inputs.src-todoist-v0_1_1.type = "github";
  inputs.src-todoist-v0_1_1.owner = "ruivieira";
  inputs.src-todoist-v0_1_1.repo = "nim-todoist";
  inputs.src-todoist-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-todoist-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-todoist-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-todoist-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}