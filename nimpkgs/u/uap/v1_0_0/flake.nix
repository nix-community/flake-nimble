{
  description = ''Nim implementation of user-agent parser'';
  inputs.src-uap-v1_0_0.flake = false;
  inputs.src-uap-v1_0_0.type = "gitlab";
  inputs.src-uap-v1_0_0.owner = "artemklevtsov";
  inputs.src-uap-v1_0_0.repo = "nim-uap";
  inputs.src-uap-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."yaml".url = "path:../../../y/yaml";
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  outputs = { self, nixpkgs, src-uap-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uap-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uap-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}