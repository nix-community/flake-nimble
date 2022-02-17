{
  description = ''Pretty-printer'';
  inputs.src-hpprint-v0_2_14.flake = false;
  inputs.src-hpprint-v0_2_14.type = "github";
  inputs.src-hpprint-v0_2_14.owner = "haxscramper";
  inputs.src-hpprint-v0_2_14.repo = "hpprint";
  inputs.src-hpprint-v0_2_14.ref = "refs/tags/v0.2.14";
  
  
  inputs."hdrawing".type = "github";
  inputs."hdrawing".owner = "riinr";
  inputs."hdrawing".repo = "flake-nimble";
  inputs."hdrawing".ref = "flake-pinning";
  inputs."hdrawing".dir = "nimpkgs/h/hdrawing";

  
  inputs."hnimast".type = "github";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".repo = "flake-nimble";
  inputs."hnimast".ref = "flake-pinning";
  inputs."hnimast".dir = "nimpkgs/h/hnimast";

  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-hpprint-v0_2_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hpprint-v0_2_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hpprint-v0_2_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}