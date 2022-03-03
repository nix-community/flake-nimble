{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimpass-v0_0_1.flake = false;
  inputs.src-nimpass-v0_0_1.type = "github";
  inputs.src-nimpass-v0_0_1.owner = "xioren";
  inputs.src-nimpass-v0_0_1.repo = "NimPass";
  inputs.src-nimpass-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-nimpass-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpass-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}