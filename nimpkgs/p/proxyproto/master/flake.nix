{
  description = ''PROXY Protocol enabler for aged programs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-proxyproto-master.flake = false;
  inputs.src-proxyproto-master.type = "github";
  inputs.src-proxyproto-master.owner = "ba0f3";
  inputs.src-proxyproto-master.repo = "libproxy.nim";
  inputs.src-proxyproto-master.ref = "refs/heads/master";
  inputs.src-proxyproto-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-proxyproto-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proxyproto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-proxyproto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}