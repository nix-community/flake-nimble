{
  description = ''Password generation library in Nim'';
  inputs.src-passgen-master.flake = false;
  inputs.src-passgen-master.type = "github";
  inputs.src-passgen-master.owner = "rustomax";
  inputs.src-passgen-master.repo = "nim-passgen";
  inputs.src-passgen-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-passgen-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-passgen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-passgen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}