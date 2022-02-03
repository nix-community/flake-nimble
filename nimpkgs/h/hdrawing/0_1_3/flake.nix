{
  description = ''Simple shape drawing'';
  inputs.src-hdrawing-0_1_3.flake = false;
  inputs.src-hdrawing-0_1_3.type = "github";
  inputs.src-hdrawing-0_1_3.owner = "haxscramper";
  inputs.src-hdrawing-0_1_3.repo = "hdrawing";
  inputs.src-hdrawing-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-hdrawing-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hdrawing-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hdrawing-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}