{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
  inputs.src-zfplugs-0_1_2.flake = false;
  inputs.src-zfplugs-0_1_2.type = "github";
  inputs.src-zfplugs-0_1_2.owner = "zendbit";
  inputs.src-zfplugs-0_1_2.repo = "nim.zfplugs";
  inputs.src-zfplugs-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."zfcore".url = "path:../../../z/zfcore";
  inputs."zfcore".type = "github";
  inputs."zfcore".owner = "riinr";
  inputs."zfcore".repo = "flake-nimble";
  inputs."zfcore".ref = "flake-pinning";
  inputs."zfcore".dir = "nimpkgs/z/zfcore";

  outputs = { self, nixpkgs, src-zfplugs-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfplugs-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfplugs-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}