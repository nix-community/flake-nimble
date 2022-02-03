{
  description = ''Convert bytes to kilobytes, megabytes, gigabytes, etc.'';
  inputs.src-bytes2human-master.flake = false;
  inputs.src-bytes2human-master.type = "github";
  inputs.src-bytes2human-master.owner = "juancarlospaco";
  inputs.src-bytes2human-master.repo = "nim-bytes2human";
  inputs.src-bytes2human-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bytes2human-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bytes2human-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bytes2human-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}