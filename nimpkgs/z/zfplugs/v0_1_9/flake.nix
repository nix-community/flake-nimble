{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
  inputs.src-zfplugs-v0_1_9.flake = false;
  inputs.src-zfplugs-v0_1_9.type = "github";
  inputs.src-zfplugs-v0_1_9.owner = "zendbit";
  inputs.src-zfplugs-v0_1_9.repo = "nim.zfplugs";
  inputs.src-zfplugs-v0_1_9.ref = "refs/tags/v0.1.9";
  
  
  inputs."zfdbms".type = "github";
  inputs."zfdbms".owner = "riinr";
  inputs."zfdbms".repo = "flake-nimble";
  inputs."zfdbms".ref = "flake-pinning";
  inputs."zfdbms".dir = "nimpkgs/z/zfdbms";

  
  inputs."zfcore".type = "github";
  inputs."zfcore".owner = "riinr";
  inputs."zfcore".repo = "flake-nimble";
  inputs."zfcore".ref = "flake-pinning";
  inputs."zfcore".dir = "nimpkgs/z/zfcore";

  
  inputs."moustachu".type = "github";
  inputs."moustachu".owner = "riinr";
  inputs."moustachu".repo = "flake-nimble";
  inputs."moustachu".ref = "flake-pinning";
  inputs."moustachu".dir = "nimpkgs/m/moustachu";

  outputs = { self, nixpkgs, src-zfplugs-v0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfplugs-v0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfplugs-v0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}