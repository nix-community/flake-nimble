{
  description = ''Building blocks for making async Gemini servers'';
  inputs.src-gemini-master.flake = false;
  inputs.src-gemini-master.type = "github";
  inputs.src-gemini-master.owner = "benob";
  inputs.src-gemini-master.repo = "gemini";
  inputs.src-gemini-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-gemini-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gemini-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gemini-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}