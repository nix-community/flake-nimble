{
  description = ''Pretty-printer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hpprint-v0_2_10.flake = false;
  inputs.src-hpprint-v0_2_10.type = "github";
  inputs.src-hpprint-v0_2_10.owner = "haxscramper";
  inputs.src-hpprint-v0_2_10.repo = "hpprint";
  inputs.src-hpprint-v0_2_10.ref = "refs/tags/v0.2.10";
  inputs.src-hpprint-v0_2_10.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."shell".type = "github";
  # inputs."shell".owner = "riinr";
  # inputs."shell".repo = "flake-nimble";
  # inputs."shell".ref = "flake-pinning";
  # inputs."shell".dir = "nimpkgs/s/shell";
  # inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."with".type = "github";
  # inputs."with".owner = "riinr";
  # inputs."with".repo = "flake-nimble";
  # inputs."with".ref = "flake-pinning";
  # inputs."with".dir = "nimpkgs/w/with";
  # inputs."with".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."with".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hdrawing".type = "github";
  # inputs."hdrawing".owner = "riinr";
  # inputs."hdrawing".repo = "flake-nimble";
  # inputs."hdrawing".ref = "flake-pinning";
  # inputs."hdrawing".dir = "nimpkgs/h/hdrawing";
  # inputs."hdrawing".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hdrawing".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hasts".type = "github";
  # inputs."hasts".owner = "riinr";
  # inputs."hasts".repo = "flake-nimble";
  # inputs."hasts".ref = "flake-pinning";
  # inputs."hasts".dir = "nimpkgs/h/hasts";
  # inputs."hasts".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hasts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hnimast".type = "github";
  # inputs."hnimast".owner = "riinr";
  # inputs."hnimast".repo = "flake-nimble";
  # inputs."hnimast".ref = "flake-pinning";
  # inputs."hnimast".dir = "nimpkgs/h/hnimast";
  # inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hmisc".type = "github";
  # inputs."hmisc".owner = "riinr";
  # inputs."hmisc".repo = "flake-nimble";
  # inputs."hmisc".ref = "flake-pinning";
  # inputs."hmisc".dir = "nimpkgs/h/hmisc";
  # inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hpprint-v0_2_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hpprint-v0_2_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hpprint-v0_2_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}