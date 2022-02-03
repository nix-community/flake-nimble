{
  description = ''vectored io for nim'';
  inputs.src-vecio-master.flake = false;
  inputs.src-vecio-master.type = "github";
  inputs.src-vecio-master.owner = "emekoi";
  inputs.src-vecio-master.repo = "vecio.nim";
  inputs.src-vecio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vecio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vecio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vecio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}