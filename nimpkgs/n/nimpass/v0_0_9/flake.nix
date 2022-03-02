{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimpass-v0_0_9.flake = false;
  inputs.src-nimpass-v0_0_9.type = "github";
  inputs.src-nimpass-v0_0_9.owner = "xioren";
  inputs.src-nimpass-v0_0_9.repo = "NimPass";
  inputs.src-nimpass-v0_0_9.ref = "refs/tags/v0.0.9";
  inputs.src-nimpass-v0_0_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpass-v0_0_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}