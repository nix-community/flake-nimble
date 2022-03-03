{
  description = ''Small library for working with strings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-prettystr-main.flake = false;
  inputs.src-prettystr-main.type = "github";
  inputs.src-prettystr-main.owner = "prettybauble";
  inputs.src-prettystr-main.repo = "prettystr";
  inputs.src-prettystr-main.ref = "refs/heads/main";
  inputs.src-prettystr-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-prettystr-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prettystr-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prettystr-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}