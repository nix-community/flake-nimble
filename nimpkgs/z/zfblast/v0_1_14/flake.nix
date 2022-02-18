{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zfblast-v0_1_14.flake = false;
  inputs.src-zfblast-v0_1_14.type = "github";
  inputs.src-zfblast-v0_1_14.owner = "zendbit";
  inputs.src-zfblast-v0_1_14.repo = "nim.zfblast";
  inputs.src-zfblast-v0_1_14.ref = "refs/tags/v0.1.14";
  
  
  inputs."uri3".type = "github";
  inputs."uri3".owner = "riinr";
  inputs."uri3".repo = "flake-nimble";
  inputs."uri3".ref = "flake-pinning";
  inputs."uri3".dir = "nimpkgs/u/uri3";

  
  inputs."sha1".type = "github";
  inputs."sha1".owner = "riinr";
  inputs."sha1".repo = "flake-nimble";
  inputs."sha1".ref = "flake-pinning";
  inputs."sha1".dir = "nimpkgs/s/sha1";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfblast-v0_1_14, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfblast-v0_1_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfblast-v0_1_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}