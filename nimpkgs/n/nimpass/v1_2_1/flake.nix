{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimpass-v1_2_1.flake = false;
  inputs.src-nimpass-v1_2_1.type = "github";
  inputs.src-nimpass-v1_2_1.owner = "xioren";
  inputs.src-nimpass-v1_2_1.repo = "NimPass";
  inputs.src-nimpass-v1_2_1.ref = "refs/tags/v1.2.1";
  inputs.src-nimpass-v1_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpass-v1_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}