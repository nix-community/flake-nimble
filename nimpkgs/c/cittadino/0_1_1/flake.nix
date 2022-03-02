{
  description = ''A simple PubSub framework using STOMP.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cittadino-0_1_1.flake = false;
  inputs.src-cittadino-0_1_1.type = "github";
  inputs.src-cittadino-0_1_1.owner = "makingspace";
  inputs.src-cittadino-0_1_1.repo = "cittadino";
  inputs.src-cittadino-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-cittadino-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."stomp".type = "github";
  # inputs."stomp".owner = "riinr";
  # inputs."stomp".repo = "flake-nimble";
  # inputs."stomp".ref = "flake-pinning";
  # inputs."stomp".dir = "nimpkgs/s/stomp";
  # inputs."stomp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stomp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cittadino-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cittadino-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cittadino-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}