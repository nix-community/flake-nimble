{
  description = ''Amazon Web Services Signature Version 4'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sigv4-1_0_6.flake = false;
  inputs.src-sigv4-1_0_6.type = "github";
  inputs.src-sigv4-1_0_6.owner = "disruptek";
  inputs.src-sigv4-1_0_6.repo = "sigv4";
  inputs.src-sigv4-1_0_6.ref = "refs/tags/1.0.6";
  inputs.src-sigv4-1_0_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/disruptek/nimcrypto".type = "github";
  # inputs."https://github.com/disruptek/nimcrypto".owner = "riinr";
  # inputs."https://github.com/disruptek/nimcrypto".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/nimcrypto".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/nimcrypto".dir = "nimpkgs/h/https://github.com/disruptek/nimcrypto";
  # inputs."https://github.com/disruptek/nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sigv4-1_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sigv4-1_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}