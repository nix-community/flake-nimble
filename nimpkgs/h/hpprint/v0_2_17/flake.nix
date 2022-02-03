{
  description = ''Pretty-printer'';
  inputs.src-hpprint-v0_2_17.flake = false;
  inputs.src-hpprint-v0_2_17.type = "github";
  inputs.src-hpprint-v0_2_17.owner = "haxscramper";
  inputs.src-hpprint-v0_2_17.repo = "hpprint";
  inputs.src-hpprint-v0_2_17.ref = "refs/tags/v0.2.17";
  
  
  inputs."hdrawing".url = "path:../../../h/hdrawing";
  inputs."hdrawing".type = "github";
  inputs."hdrawing".owner = "riinr";
  inputs."hdrawing".repo = "flake-nimble";
  inputs."hdrawing".ref = "flake-pinning";
  inputs."hdrawing".dir = "nimpkgs/h/hdrawing";

  
  inputs."hnimast".url = "path:../../../h/hnimast";
  inputs."hnimast".type = "github";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".repo = "flake-nimble";
  inputs."hnimast".ref = "flake-pinning";
  inputs."hnimast".dir = "nimpkgs/h/hnimast";

  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-hpprint-v0_2_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hpprint-v0_2_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hpprint-v0_2_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}