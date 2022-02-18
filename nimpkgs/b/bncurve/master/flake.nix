{
  description = ''Nim Barreto-Naehrig pairing-friendly elliptic curve implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bncurve-master.flake = false;
  inputs.src-bncurve-master.type = "github";
  inputs.src-bncurve-master.owner = "status-im";
  inputs.src-bncurve-master.repo = "nim-bncurve";
  inputs.src-bncurve-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bncurve-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bncurve-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bncurve-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}