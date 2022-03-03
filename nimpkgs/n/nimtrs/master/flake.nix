{
  description = ''Nim term rewriting system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimtrs-master.flake = false;
  inputs.src-nimtrs-master.type = "github";
  inputs.src-nimtrs-master.owner = "haxscramper";
  inputs.src-nimtrs-master.repo = "nimtrs";
  inputs.src-nimtrs-master.ref = "refs/heads/master";
  inputs.src-nimtrs-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."hmisc".type = "github";
  # inputs."hmisc".owner = "riinr";
  # inputs."hmisc".repo = "flake-nimble";
  # inputs."hmisc".ref = "flake-pinning";
  # inputs."hmisc".dir = "nimpkgs/h/hmisc";
  # inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hdrawing".type = "github";
  # inputs."hdrawing".owner = "riinr";
  # inputs."hdrawing".repo = "flake-nimble";
  # inputs."hdrawing".ref = "flake-pinning";
  # inputs."hdrawing".dir = "nimpkgs/h/hdrawing";
  # inputs."hdrawing".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hdrawing".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hpprint".type = "github";
  # inputs."hpprint".owner = "riinr";
  # inputs."hpprint".repo = "flake-nimble";
  # inputs."hpprint".ref = "flake-pinning";
  # inputs."hpprint".dir = "nimpkgs/h/hpprint";
  # inputs."hpprint".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hpprint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hnimast".type = "github";
  # inputs."hnimast".owner = "riinr";
  # inputs."hnimast".repo = "flake-nimble";
  # inputs."hnimast".ref = "flake-pinning";
  # inputs."hnimast".dir = "nimpkgs/h/hnimast";
  # inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtrs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtrs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtrs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}