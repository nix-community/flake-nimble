{
  description = ''A simple PubSub framework using STOMP.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cittadino-0_1_0.flake = false;
  inputs.src-cittadino-0_1_0.type = "github";
  inputs.src-cittadino-0_1_0.owner = "makingspace";
  inputs.src-cittadino-0_1_0.repo = "cittadino";
  inputs.src-cittadino-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."stomp".type = "github";
  inputs."stomp".owner = "riinr";
  inputs."stomp".repo = "flake-nimble";
  inputs."stomp".ref = "flake-pinning";
  inputs."stomp".dir = "nimpkgs/s/stomp";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cittadino-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cittadino-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cittadino-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}