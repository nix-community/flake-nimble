{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zfcore-master.flake = false;
  inputs.src-zfcore-master.type = "github";
  inputs.src-zfcore-master.owner = "zendbit";
  inputs.src-zfcore-master.repo = "nim.zfcore";
  inputs.src-zfcore-master.ref = "refs/heads/master";
  
  
  inputs."zfblast".type = "github";
  inputs."zfblast".owner = "riinr";
  inputs."zfblast".repo = "flake-nimble";
  inputs."zfblast".ref = "flake-pinning";
  inputs."zfblast".dir = "nimpkgs/z/zfblast";

  
  inputs."uri3".type = "github";
  inputs."uri3".owner = "riinr";
  inputs."uri3".repo = "flake-nimble";
  inputs."uri3".ref = "flake-pinning";
  inputs."uri3".dir = "nimpkgs/u/uri3";

  
  inputs."stdext".type = "github";
  inputs."stdext".owner = "riinr";
  inputs."stdext".repo = "flake-nimble";
  inputs."stdext".ref = "flake-pinning";
  inputs."stdext".dir = "nimpkgs/s/stdext";

  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfcore-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfcore-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}