{
  description = ''Amazon Web Services Signature Version 4'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sigv4-1_0_7.flake = false;
  inputs.src-sigv4-1_0_7.type = "github";
  inputs.src-sigv4-1_0_7.owner = "disruptek";
  inputs.src-sigv4-1_0_7.repo = "sigv4";
  inputs.src-sigv4-1_0_7.ref = "refs/tags/1.0.7";
  inputs.src-sigv4-1_0_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/disruptek/nimcrypto".type = "github";
  # inputs."https://github.com/disruptek/nimcrypto".owner = "riinr";
  # inputs."https://github.com/disruptek/nimcrypto".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/nimcrypto".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/nimcrypto".dir = "nimpkgs/h/https://github.com/disruptek/nimcrypto";
  # inputs."https://github.com/disruptek/nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sigv4-1_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sigv4-1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}