{
  description = ''Turning your worst nightmare into a Nim package. This is a Nim port of mohan-cao's owoify-js, which will help you turn any string into nonsensical babyspeak similar to LeafySweet's infamous Chrome extension.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-owoifynim-main.flake = false;
  inputs.src-owoifynim-main.type = "github";
  inputs.src-owoifynim-main.owner = "deadshot465";
  inputs.src-owoifynim-main.repo = "owoifynim";
  inputs.src-owoifynim-main.ref = "refs/heads/main";
  inputs.src-owoifynim-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-owoifynim-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-owoifynim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-owoifynim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}