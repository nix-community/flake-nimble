{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-zfblast-v0_1_0.flake = false;
  inputs.src-zfblast-v0_1_0.type = "github";
  inputs.src-zfblast-v0_1_0.owner = "zendbit";
  inputs.src-zfblast-v0_1_0.repo = "nim.zfblast";
  inputs.src-zfblast-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-zfblast-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zfblast-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfblast-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfblast-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}