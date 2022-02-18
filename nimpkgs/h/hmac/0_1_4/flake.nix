{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hmac-0_1_4.flake = false;
  inputs.src-hmac-0_1_4.type = "github";
  inputs.src-hmac-0_1_4.owner = "OpenSystemsLab";
  inputs.src-hmac-0_1_4.repo = "hmac.nim";
  inputs.src-hmac-0_1_4.ref = "refs/tags/0.1.4";
  
  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hmac-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmac-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmac-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}