{
  description = ''Random password and passphrase generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-randpw-v1_0_0.flake = false;
  inputs.src-randpw-v1_0_0.type = "github";
  inputs.src-randpw-v1_0_0.owner = "pdrb";
  inputs.src-randpw-v1_0_0.repo = "nim-randpw";
  inputs.src-randpw-v1_0_0.ref = "refs/tags/v1.0.0";
  inputs.src-randpw-v1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-randpw-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-randpw-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-randpw-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}