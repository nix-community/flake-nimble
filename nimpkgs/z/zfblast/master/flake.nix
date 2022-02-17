{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';
  inputs.src-zfblast-master.flake = false;
  inputs.src-zfblast-master.type = "github";
  inputs.src-zfblast-master.owner = "zendbit";
  inputs.src-zfblast-master.repo = "nim.zfblast";
  inputs.src-zfblast-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-zfblast-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfblast-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfblast-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}