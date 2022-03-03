{
  description = ''Random password and passphrase generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-randpw-master.flake = false;
  inputs.src-randpw-master.type = "github";
  inputs.src-randpw-master.owner = "pdrb";
  inputs.src-randpw-master.repo = "nim-randpw";
  inputs.src-randpw-master.ref = "refs/heads/master";
  inputs.src-randpw-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-randpw-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-randpw-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-randpw-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}