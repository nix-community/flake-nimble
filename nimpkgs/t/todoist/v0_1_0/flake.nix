{
  description = ''A Nim client for Todoist's REST API'';
  inputs.src-todoist-v0_1_0.flake = false;
  inputs.src-todoist-v0_1_0.type = "github";
  inputs.src-todoist-v0_1_0.owner = "ruivieira";
  inputs.src-todoist-v0_1_0.repo = "nim-todoist";
  inputs.src-todoist-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-todoist-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-todoist-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-todoist-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}