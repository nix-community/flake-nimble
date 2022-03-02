{
  description = ''NIM bindings for ALSA-LIB c library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-alsa-master.flake = false;
  inputs.src-alsa-master.type = "gitlab";
  inputs.src-alsa-master.owner = "eagledot";
  inputs.src-alsa-master.repo = "nim-alsa";
  inputs.src-alsa-master.ref = "refs/heads/master";
  inputs.src-alsa-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-alsa-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alsa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alsa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}