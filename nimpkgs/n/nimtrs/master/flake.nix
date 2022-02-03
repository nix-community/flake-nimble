{
  description = ''Nim term rewriting system'';
  inputs.src-nimtrs-master.flake = false;
  inputs.src-nimtrs-master.type = "github";
  inputs.src-nimtrs-master.owner = "haxscramper";
  inputs.src-nimtrs-master.repo = "nimtrs";
  inputs.src-nimtrs-master.ref = "refs/heads/master";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."hdrawing".url = "path:../../../h/hdrawing";
  inputs."hdrawing".type = "github";
  inputs."hdrawing".owner = "riinr";
  inputs."hdrawing".repo = "flake-nimble";
  inputs."hdrawing".ref = "flake-pinning";
  inputs."hdrawing".dir = "nimpkgs/h/hdrawing";

  
  inputs."hpprint".url = "path:../../../h/hpprint";
  inputs."hpprint".type = "github";
  inputs."hpprint".owner = "riinr";
  inputs."hpprint".repo = "flake-nimble";
  inputs."hpprint".ref = "flake-pinning";
  inputs."hpprint".dir = "nimpkgs/h/hpprint";

  
  inputs."hnimast".url = "path:../../../h/hnimast";
  inputs."hnimast".type = "github";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".repo = "flake-nimble";
  inputs."hnimast".ref = "flake-pinning";
  inputs."hnimast".dir = "nimpkgs/h/hnimast";

  outputs = { self, nixpkgs, src-nimtrs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtrs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtrs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}