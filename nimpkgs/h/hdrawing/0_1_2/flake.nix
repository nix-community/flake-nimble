{
  description = ''Simple shape drawing'';
  inputs.src-hdrawing-0_1_2.flake = false;
  inputs.src-hdrawing-0_1_2.type = "github";
  inputs.src-hdrawing-0_1_2.owner = "haxscramper";
  inputs.src-hdrawing-0_1_2.repo = "hdrawing";
  inputs.src-hdrawing-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-hdrawing-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hdrawing-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hdrawing-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}