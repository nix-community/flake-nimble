{
  description = ''FastCGI library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fastcgi-master.flake = false;
  inputs.src-fastcgi-master.type = "github";
  inputs.src-fastcgi-master.owner = "ba0f3";
  inputs.src-fastcgi-master.repo = "fastcgi.nim";
  inputs.src-fastcgi-master.ref = "refs/heads/master";
  inputs.src-fastcgi-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fastcgi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fastcgi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fastcgi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}