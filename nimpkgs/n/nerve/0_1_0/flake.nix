{
  description = ''A RPC framework for building web APIs'';
  inputs.src-nerve-0_1_0.flake = false;
  inputs.src-nerve-0_1_0.type = "github";
  inputs.src-nerve-0_1_0.owner = "nepeckman";
  inputs.src-nerve-0_1_0.repo = "nerve-rpc";
  inputs.src-nerve-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."httpbeast".url = "path:../../../h/httpbeast";
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  outputs = { self, nixpkgs, src-nerve-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nerve-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nerve-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}