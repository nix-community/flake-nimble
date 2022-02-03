{
  description = ''FastCGI library for Nim'';
  inputs.src-fastcgi-master.flake = false;
  inputs.src-fastcgi-master.type = "github";
  inputs.src-fastcgi-master.owner = "ba0f3";
  inputs.src-fastcgi-master.repo = "fastcgi.nim";
  inputs.src-fastcgi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fastcgi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fastcgi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fastcgi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}