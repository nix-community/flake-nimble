{
  description = ''implements macro creates toInterface proc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-interface_implements-main.flake = false;
  inputs.src-interface_implements-main.type = "github";
  inputs.src-interface_implements-main.owner = "itsumura-h";
  inputs.src-interface_implements-main.repo = "nim-interface-implements";
  inputs.src-interface_implements-main.ref = "refs/heads/main";
  inputs.src-interface_implements-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-interface_implements-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-interface_implements-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-interface_implements-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}