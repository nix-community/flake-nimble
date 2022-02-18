{
  description = ''ABI Encoding for Ethereum contracts'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-contractabi-main.flake = false;
  inputs.src-contractabi-main.type = "github";
  inputs.src-contractabi-main.owner = "status-im";
  inputs.src-contractabi-main.repo = "nim-contract-abi";
  inputs.src-contractabi-main.ref = "refs/heads/main";
  
  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."questionable".type = "github";
  inputs."questionable".owner = "riinr";
  inputs."questionable".repo = "flake-nimble";
  inputs."questionable".ref = "flake-pinning";
  inputs."questionable".dir = "nimpkgs/q/questionable";

  
  inputs."upraises".type = "github";
  inputs."upraises".owner = "riinr";
  inputs."upraises".repo = "flake-nimble";
  inputs."upraises".ref = "flake-pinning";
  inputs."upraises".dir = "nimpkgs/u/upraises";

  outputs = { self, nixpkgs, flakeNimbleLib, src-contractabi-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-contractabi-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-contractabi-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}