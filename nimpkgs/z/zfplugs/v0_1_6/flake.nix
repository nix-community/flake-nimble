{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
  inputs.src-zfplugs-v0_1_6.flake = false;
  inputs.src-zfplugs-v0_1_6.type = "github";
  inputs.src-zfplugs-v0_1_6.owner = "zendbit";
  inputs.src-zfplugs-v0_1_6.repo = "nim.zfplugs";
  inputs.src-zfplugs-v0_1_6.ref = "refs/tags/v0.1.6";
  
  
  inputs."zfcore".url = "path:../../../z/zfcore";
  inputs."zfcore".type = "github";
  inputs."zfcore".owner = "riinr";
  inputs."zfcore".repo = "flake-nimble";
  inputs."zfcore".ref = "flake-pinning";
  inputs."zfcore".dir = "nimpkgs/z/zfcore";

  
  inputs."moustachu".url = "path:../../../m/moustachu";
  inputs."moustachu".type = "github";
  inputs."moustachu".owner = "riinr";
  inputs."moustachu".repo = "flake-nimble";
  inputs."moustachu".ref = "flake-pinning";
  inputs."moustachu".dir = "nimpkgs/m/moustachu";

  outputs = { self, nixpkgs, src-zfplugs-v0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfplugs-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfplugs-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}