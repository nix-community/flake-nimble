{
  description = ''Pretty-printer'';
  inputs.src-hpprint-master.flake = false;
  inputs.src-hpprint-master.type = "github";
  inputs.src-hpprint-master.owner = "haxscramper";
  inputs.src-hpprint-master.repo = "hpprint";
  inputs.src-hpprint-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-hpprint-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hpprint-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hpprint-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}