{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimpass-v0_0_5.flake = false;
  inputs.src-nimpass-v0_0_5.type = "github";
  inputs.src-nimpass-v0_0_5.owner = "xioren";
  inputs.src-nimpass-v0_0_5.repo = "NimPass";
  inputs.src-nimpass-v0_0_5.ref = "refs/tags/v0.0.5";
  inputs.src-nimpass-v0_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpass-v0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}