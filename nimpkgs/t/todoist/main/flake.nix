{
  description = ''A Nim client for Todoist's REST API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-todoist-main.flake = false;
  inputs.src-todoist-main.type = "github";
  inputs.src-todoist-main.owner = "ruivieira";
  inputs.src-todoist-main.repo = "nim-todoist";
  inputs.src-todoist-main.ref = "refs/heads/main";
  inputs.src-todoist-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-todoist-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-todoist-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-todoist-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}