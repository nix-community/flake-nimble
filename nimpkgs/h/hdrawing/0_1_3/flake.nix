{
  description = ''Simple shape drawing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hdrawing-0_1_3.flake = false;
  inputs.src-hdrawing-0_1_3.type = "github";
  inputs.src-hdrawing-0_1_3.owner = "haxscramper";
  inputs.src-hdrawing-0_1_3.repo = "hdrawing";
  inputs.src-hdrawing-0_1_3.ref = "refs/tags/0.1.3";
  inputs.src-hdrawing-0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."hmisc".type = "github";
  # inputs."hmisc".owner = "riinr";
  # inputs."hmisc".repo = "flake-nimble";
  # inputs."hmisc".ref = "flake-pinning";
  # inputs."hmisc".dir = "nimpkgs/h/hmisc";
  # inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hdrawing-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hdrawing-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hdrawing-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}